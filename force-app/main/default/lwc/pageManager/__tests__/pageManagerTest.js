/**
 * Created by bjohnson on 1/5/2022.
 */

import { stateFactory } from "../pageManager";

describe('page manager test suite', ()=> {
  it("should return the default page", function() {
    const result = stateFactory('default');
    expect(result.currentPage).toBe('intro');
    expect(result.nextPage).toBe('contactInfo')
  });
  }
)
